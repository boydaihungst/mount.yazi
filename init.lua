local function fail(s, ...) ya.notify { title = "Mount manager", content = string.format(s, ...), timeout = 5, level = "error" } end

local function entry(_, args)
   local mmt_path = args[1] or "mmt"
   if not mmt_path then
      return fail("You need to set --args=/path/to/mmt")
   end

   local _permit = ya.hide()

   local child, err =
       Command(mmt_path):cwd("/"):stdin(Command.INHERIT):stdout(Command.PIPED):stderr(
          Command.INHERIT):spawn()

   if not child then
      return fail("Failed `mmt`: " .. err)
   end

   local output, err = child:wait_with_output()
   if not output then
      return fail("`mmt` output error: " .. err)
   elseif not output.status.success and output.status.code ~= 130 then
      return fail("`mmt` error code %s", output.status.code)
   end

   local target = output.stdout:gsub("\n$", "")
   if target ~= "" then
      ya.manager_emit("cd", { target })
   end
end

return { entry = entry }

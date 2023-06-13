local syn = {}

local function unsupported(...)
    warn("Unsupported function.")
end

syn.cache_replace = cache.replace
syn.cache_invalidate = cache.invalidate
syn.set_thread_identity = setidentity
syn.get_thread_identity = getthreadidentity
syn.is_cached = cache.iscached
syn.write_clipboard = setclipboard
syn.queue_on_teleport = queue_on_teleport
syn.protect_gui = unsupported
syn.unprotect_gui = unsupported
syn.is_beta = function()
    return false
end
syn.request = request
syn.secure_call = KRNL_SAFE_CALL
syn.create_secure_function = unsupported
syn.run_secure_function = unsupported

local crypt = {}

crypt.encrypt = unsupported
crypt.decrypt = unsupported
crypt.base64 = {}
crypt.base64.encode = base64_encode
crypt.base64.decode = base64_decode
crypt.hash = crypt_hash
crypt.derive = unsupported
crypt.random = unsupported
crypt.custom = {}
crypt.custom.encrypt = unsupported
crypt.custom.decrypt = unsupported
crypt.custom.hash = unsupported


syn.crypt = crypt
syn.crypto = crypt

getgenv().syn = syn

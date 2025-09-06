require_relative "FunctionNameObfuscator/FunctionNameObfuscator.rb"

def create_keys
  FunctionNameObfuscator::ObfuscateFunction.create_keys
end

def obfuscate_function
  FunctionNameObfuscator::ObfuscateFunction.obfuscate_function
end

def fake_function_name
  FunctionNameObfuscator::ObfuscateFunction.fake_function_name
end

#create_keys
#obfuscate_function
fake_function_name

## FUNCTION NAME OBFUSCATOR
Note that this should not be used for enciphering bulk text, or messages you really want to keep secret.

Rather this is for temporarily obfuscating function names in programs, and allows for basic forward secrecy by creating new keys.

Because traditionally manual cryptography is slow, this means its best for programs that don't use many functions.

You are also limited to 26*26 possible shuffled latin alphabets, or 676 possible reciprocal keys. There are techniques to increase the size of the alphabet, but can cause formatting issues for function names.

Its also best practice to use the fake function name generator, unless you're absolutely sure you need a bespoke function name to encrypt.

## Version
Ruby 3.2.3

## Usage
Create keys creates a new set of keys. Obfuscate function allows you to manually specifiy what function name to encipher.

Fake function name is used for if you can't think of a function name.

~~~ruby
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
~~~

Suppose a malicious user wants to reverse engineer a program by analyzing function calls in class oriented programming: this obfuscates what exactly those functions do.

Thus if someone decrypts it ( and more than likely they will ), you can assume then that malicious user is likely human until bots gets advanced enough that renders this test irrelevant.

## Other Usage
Other information can be gathered using other means found here: [How Many]([How Many](https://github.com/BequestDeCendresStudios/HowMany))

## What Are One Time Pads?
One time pads have to be completely random, used only once, and stored in a secure function. This system can be considered a weak version of a one time pad scheme with an extremely tiny key space.

However the chances you would ever need to generate new keys is extremely unlikely, as this undermines its real function:

This can monitor to see if something has been tampered, which may mean reusing keys sometimes to make sure an obfuscating function is indeed insecure.

This goes with specific assumptions: in malicious traffic, typically a human will try to decrypt obfuscated function names, while a bot typically leaves programs as it. So it becomes more akin to a kind of bot detection system.

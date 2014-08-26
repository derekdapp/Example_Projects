class Encryptor
	def cipher
    {'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q',
     'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u',
     'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y',
     'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c',
     'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
     'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k',
     'y' => 'l', 'z' => 'm'}
  end
  def cipher(rotation)
  	characters = (' '..'z').to_a
  	rotated_characters = characters.rotate(rotation)
  	Hash[characters.zip(rotated_characters)]
  end
  def encrypt(string, rotations)
  	rotation = rotations
  	cipher_for_rotation = cipher(rotation)
  	letters = string.split("")
  	
  	results = []
  	letters.collect do |letter|
  		results.push(cipher_for_rotation[letter])
  end
  results.join
  end
  def decrypt(string, rotations)
  	rotation = rotations
  	cipher_for_rotation = cipher(rotation*-1)
  	letters = string.split("")
  	
  	results = []
  	letters.collect do |letter|
  		results.push(cipher_for_rotation[letter])
  end
  results.join
  end
  def encrypt_file(filename,rotation)
  	input = File.open(filename, "r")
  	string = input.read
  	out = File.open("#{filename}.encrypted", "w")
  	out.write(encrypt(string,rotation))
  	out.close
  end
  def decrypt_file(filename,rotation)
  	input = File.open(filename, "r")
  	string = input.read
  	output_filename = filename.gsub("encrypted", "decrypted")
  	out = File.open(output_filename, "w")
  	out.write(decrypt(string,rotation))
  	out.close
  end
  def supported_characters
    (' '..'z').to_a
  end

  def crack(message)
    supported_characters.count.times.collect do |attempt|
      decrypt(message,attempt)
    end
  end





end
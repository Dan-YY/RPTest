RP Code Test

RPComment as the superclass which conform Encodable protocal.

RPAnnotation is the subclass, and futrue class will all inherit form RPComment.
Subclass's property should be added to CodingKeys and func encode.
CodingKeys is needed otherwise subclass won't listing full var when conveting to json


RPStoreManager is a shared instance, it managing RPComment and RPComment's subclass to encode to JSON and posting to remote server.
Todo: add how to posting data depands on the choosen server in postToStore functions



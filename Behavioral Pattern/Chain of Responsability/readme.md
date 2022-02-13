An application that prompts the user its name and age and then saves the data in three types of formats: txt, json or xml, depending on the file extension.

Maybe this is not the best application of Chain of Responsability pattern, because the unique difference between the concrete classes is the method for formating the data, therefore, the strategy pattern could be used instead.

In my oppinion, the method linkWith() is the most interesting part of the code, because we can exchange the blocks in the chain without break the code.
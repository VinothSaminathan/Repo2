trigger HelloWorldTrigger on account( before insert) 
{
	System.debug('Hello World!');
}
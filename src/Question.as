package  
{
	/**
	 * ...
	 * @author Vladimir
	 */
	public class Question 
	{
		private var query:String;
		private var answer:String;
		private var variants:Array;
		private var numWord:int;
		private var _nameSound:String;
		
		public function Question(_query:String, _answer:String, _arr:Array, _sound:String = "") 
		{
			query = _query;
			answer = _answer;
			variants = _arr;
			_nameSound = _sound;
			
			for (var i:int = 0; i < answer.length; i++)
			{
				if (answer.charAt(i) == " ")
				{
					numWord++;
				}
			}
			numWord++;
		}
		
		public function get NumWords():int
		{
			return numWord;
		}
		
		public function get Query():String
		{
			return query;
		}
		
		public function get Answer():String
		{
			while (answer.charAt(0) == " ")
				answer = answer.slice(1);
			while (answer.charAt(answer.length - 1) == " ")
				answer = answer.slice(0, answer.length - 1);
			
			return answer;
		}
		
		public function get Variants():Array
		{
			return variants;
		}
		
		public function get nameSound():String 
		{
			return _nameSound;
		}
		
	}

}
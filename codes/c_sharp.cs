using System;

namespace InheritanceExample
{
    // 基底クラス（親クラス）
    public class Person
    {
        public string Name { get; protected set; }

        public Person(string name)
        {
            this.Name = name;
        }

        // オーバーライドを許可するため virtual 修飾子を付与
        public virtual string Introduce()
        {
            return $"私の名前は{Name}です。";
        }
    }

    // 1) studentクラス
    public class student : Person
    {
        // インスタンス変数：所属している学校
        private string school;

        // コンストラクタ：親クラスのコンストラクタを呼び出す
        public student(string name, string school) : base(name)
        {
            this.school = school;
        }

        // メソッドのオーバーライド
        public override string Introduce()
        {
            // 親クラスの自己紹介に学校情報を追加して返す
            return $"{base.Introduce()}私は{school}に通っています。";
        }
    }

    // 2) workerクラス
    public class worker : Person
    {
        // インスタンス変数：所属している会社
        private string company;

        // コンストラクタ：親クラスのコンストラクタを呼び出し、companyを指定
        public worker(string name, string company) : base(name)
        {
            this.company = company;
        }

        // メソッドのオーバーライド
        public override string Introduce()
        {
            // 親クラスの自己紹介に会社情報を追加して返す
            return $"{base.Introduce()}私は{company}に勤務しています。";
        }
    }

    // 動作確認用クラス
    class Program
    {
        static void Main(string[] args)
        {
            student s = new student("田中太郎", "技術科学大学");
            Console.WriteLine(s.Introduce());

            worker w = new worker("佐藤二朗", "システム開発株式会社");
            Console.WriteLine(w.Introduce());
        }
    }
}

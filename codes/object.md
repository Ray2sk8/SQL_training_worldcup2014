C #におけるオブジェクト指向の3大要素は、「カプセル化」「継承」「多態性（ポリモーフィズム）」です。これらはプログラムの再利用性、保守性、拡張性を高めるために不可欠な概念です。
それぞれの概念をC #のコード例とともに解説します。
---
## 1. カプセル化 (Encapsulation)
カプセル化とは 、 データ （ フィールド ） とそれに対する操作 （ メソッド ） を一つの 「 クラス 」 にまとめ 、 外部から直接データを操作できないように制限することです 。 ### **C#による具体例**
プロパティを使用して 、 不正な値が代入されるのを防ぐ例です 。 ```csharp
public class BankAccount
{
    // 外部から直接書き換えられないよう private にする
    private decimal _balance;

    // プロパティを通じてアクセスを制御
    public decimal Balance
    {
        get { return _balance; }
    }

    // 預金メソッド：負の値を許可しないロジックをカプセル化
    public void Deposit(decimal amount)
    {
        if (amount > 0)
        {
            _balance += amount;
        }
    }
}
``` * * * 効果 * *: 内部状態を保護し 、 オブジェクトの整合性を保ちます 。 ---
## 2. 継承 (Inheritance)
継承とは 、 既存のクラス （ 親クラス ） の性質を新しいクラス （ 子クラス ） が引き継ぐ仕組みです 。 共通機能を親に定義することで 、 コードの重複を避けることができます 。 ### **C#による具体例**
「 乗り物 」 という共通概念から 「 自動車 」 を作成する例です 。 ```csharp
// 親クラス（基底クラス）
public class Vehicle
{
    public string Brand { get; set; }
    public void StartEngine() => Console.WriteLine("エンジンを始動します。");
}

// 子クラス（派生クラス）：Vehicleを継承
public class Car : Vehicle
{
    public int NumberOfDoors { get; set; }
    public void OpenTrunk() => Console.WriteLine("トランクを開けます。");
}
``` * * * 効果 * *: `Car` インスタンスは `Brand` プロパティや `StartEngine` メソッドをそのまま利用でき 、 開発効率が向上します 。 ---
## 3. 多態性 / ポリモーフィズム (Polymorphism)
多態性とは 、 異なるクラスのオブジェクトに対して同じインターフェース （ メソッド名 ） で呼び出しを行っても 、 それぞれのクラスに応じた異なる挙動をさせる仕組みです 。 ### **C#による具体例**
`virtual` と `override` キーワードを用いた動的多態性の例です 。 ```csharp
public class Animal
{
    // 子クラスで上書きを許可するメソッド
    public virtual void MakeSound() => Console.WriteLine("動物の鳴き声");
}

public class Dog : Animal
{
    public override void MakeSound() => Console.WriteLine("ワンワン！");
}

public class Cat : Animal
{
    public override void MakeSound() => Console.WriteLine("ニャー");
}

// 使用例
List<Animal> animals = new List<Animal> { new Dog(), new Cat() };
foreach (var animal in animals)
{
    // 同じメソッドを呼んでいるが、実体によって挙動が異なる
    animal.MakeSound();
}
``` * * * 効果 * *: 呼び出し側 （ メインロジック ） を個別の型に依存させず 、 抽象的な型 （ この場合は `Animal` ） として扱えるため 、 拡張性が極めて高くなります 。 ---
## まとめ
* * * カプセル化 * *: データを隠して安全に扱う 。 * * * 継承 * *: 既存の資産を使い回して拡張する 。 * * * 多態性 * *: 同じ命令で異なる振る舞いを実現し 、 柔軟性を高める 。 これら3つを組み合わせることで 、 複雑なシステムを 「 部品 （ オブジェクト ） 」 の組み合わせとして整理し 、 管理しやすくすることができます 。 現在作成されているプログラムや学習中のコードにおいて 、 これらの要素を具体的に適用したい部分はありますか ？
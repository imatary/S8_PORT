.class Lcom/android/phone/answeringmemo/AnsweringMemoSettings$8;
.super Ljava/lang/Object;
.source "AnsweringMemoSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->showSoundLanguageDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$8;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    iput-object p2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$8;->val$textView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$8;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    invoke-static {v0, p3}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->-set1(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;I)I

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$8;->val$textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$8;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    invoke-static {v1}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->-get4(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$8;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    invoke-static {v2}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->-get3(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

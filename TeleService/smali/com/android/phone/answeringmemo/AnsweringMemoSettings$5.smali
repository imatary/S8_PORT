.class Lcom/android/phone/answeringmemo/AnsweringMemoSettings$5;
.super Ljava/lang/Object;
.source "AnsweringMemoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->confirmSelectionDialog(Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$5;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$5;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    const-string/jumbo v1, "answering_memo_setting"

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$5;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    invoke-static {v2}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->-get5(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;)I

    move-result v2

    const v3, 0x7f0900cb

    invoke-static {v0, v1, v3, v2}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->-wrap3(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$5;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->-get0(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;)Landroid/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$5;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    invoke-static {v1}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->-get5(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$5;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$5;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    invoke-static {v1}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->-get5(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->-wrap0(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;I)V

    return-void
.end method

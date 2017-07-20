.class Lcom/android/phone/answeringmemo/AnsweringMemoSettings$4;
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

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$4;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    iput-object p2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$4;->val$prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$4;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "automatic_answering_enable_sharedpref"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$4;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    invoke-static {v1, v2}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->-wrap1(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;Z)V

    return-void
.end method

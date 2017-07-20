.class Lcom/android/phone/callsettings/AnsweringCall$2;
.super Ljava/lang/Object;
.source "AnsweringCall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AnsweringCall;->confirmSelectionDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AnsweringCall;

.field final synthetic val$aValue:Z


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AnsweringCall;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/AnsweringCall$2;->this$0:Lcom/android/phone/callsettings/AnsweringCall;

    iput-boolean p2, p0, Lcom/android/phone/callsettings/AnsweringCall$2;->val$aValue:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/phone/callsettings/AnsweringCall$2;->this$0:Lcom/android/phone/callsettings/AnsweringCall;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v5, "automatic_answering_enable_sharedpref"

    iget-boolean v2, p0, Lcom/android/phone/callsettings/AnsweringCall$2;->val$aValue:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, p0, Lcom/android/phone/callsettings/AnsweringCall$2;->this$0:Lcom/android/phone/callsettings/AnsweringCall;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "putAutoAnswerSetting : \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/phone/callsettings/AnsweringCall$2;->val$aValue:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Lcom/android/phone/callsettings/AnsweringCall;->-wrap0(Lcom/android/phone/callsettings/AnsweringCall;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/callsettings/AnsweringCall$2;->this$0:Lcom/android/phone/callsettings/AnsweringCall;

    iget-boolean v5, p0, Lcom/android/phone/callsettings/AnsweringCall$2;->val$aValue:Z

    if-eqz v5, :cond_1

    :goto_1
    invoke-static {v2, v3}, Lcom/android/phone/callsettings/AnsweringCall;->-wrap1(Lcom/android/phone/callsettings/AnsweringCall;Z)V

    iget-object v2, p0, Lcom/android/phone/callsettings/AnsweringCall$2;->this$0:Lcom/android/phone/callsettings/AnsweringCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAutoAnswer : \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/phone/callsettings/AnsweringCall$2;->val$aValue:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/android/phone/callsettings/AnsweringCall;->-wrap0(Lcom/android/phone/callsettings/AnsweringCall;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/callsettings/AnsweringCall$2;->this$0:Lcom/android/phone/callsettings/AnsweringCall;

    invoke-static {v2}, Lcom/android/phone/callsettings/AnsweringCall;->-wrap2(Lcom/android/phone/callsettings/AnsweringCall;)V

    return-void

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

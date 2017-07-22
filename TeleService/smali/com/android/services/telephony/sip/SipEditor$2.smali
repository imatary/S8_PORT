.class Lcom/android/services/telephony/sip/SipEditor$2;
.super Ljava/lang/Object;
.source "SipEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/sip/SipEditor;->replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/sip/SipEditor;

.field final synthetic val$newProfile:Landroid/net/sip/SipProfile;

.field final synthetic val$oldProfile:Landroid/net/sip/SipProfile;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/sip/SipEditor;Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/sip/SipEditor$2;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    iput-object p2, p0, Lcom/android/services/telephony/sip/SipEditor$2;->val$oldProfile:Landroid/net/sip/SipProfile;

    iput-object p3, p0, Lcom/android/services/telephony/sip/SipEditor$2;->val$newProfile:Landroid/net/sip/SipProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipEditor$2;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    iget-object v2, p0, Lcom/android/services/telephony/sip/SipEditor$2;->val$oldProfile:Landroid/net/sip/SipProfile;

    invoke-static {v1, v2}, Lcom/android/services/telephony/sip/SipEditor;->-wrap2(Lcom/android/services/telephony/sip/SipEditor;Landroid/net/sip/SipProfile;)V

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipEditor$2;->val$newProfile:Landroid/net/sip/SipProfile;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipEditor$2;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    invoke-static {v1}, Lcom/android/services/telephony/sip/SipEditor;->-wrap4(Lcom/android/services/telephony/sip/SipEditor;)V

    :goto_0
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipEditor$2;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor;->finish()V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipEditor$2;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    iget-object v2, p0, Lcom/android/services/telephony/sip/SipEditor$2;->val$newProfile:Landroid/net/sip/SipProfile;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/sip/SipEditor;->-wrap5(Lcom/android/services/telephony/sip/SipEditor;Landroid/net/sip/SipProfile;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "replaceProfile, can not save/register new SipProfile, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/sip/SipEditor;->-wrap3(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipEditor$2;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    invoke-static {v1, v0}, Lcom/android/services/telephony/sip/SipEditor;->-wrap7(Lcom/android/services/telephony/sip/SipEditor;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

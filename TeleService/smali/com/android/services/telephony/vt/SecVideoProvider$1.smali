.class Lcom/android/services/telephony/vt/SecVideoProvider$1;
.super Ljava/lang/Object;
.source "SecVideoProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/vt/SecVideoProvider;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/vt/SecVideoProvider;

.field final synthetic val$requestProfile:Landroid/telecom/VideoProfile;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/vt/SecVideoProvider;Landroid/telecom/VideoProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/vt/SecVideoProvider$1;->this$0:Lcom/android/services/telephony/vt/SecVideoProvider;

    iput-object p2, p0, Lcom/android/services/telephony/vt/SecVideoProvider$1;->val$requestProfile:Landroid/telecom/VideoProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Landroid/telecom/VideoProfile;

    iget-object v1, p0, Lcom/android/services/telephony/vt/SecVideoProvider$1;->val$requestProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    iget-object v2, p0, Lcom/android/services/telephony/vt/SecVideoProvider$1;->val$requestProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v2}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/telecom/VideoProfile;-><init>(II)V

    iget-object v1, p0, Lcom/android/services/telephony/vt/SecVideoProvider$1;->this$0:Lcom/android/services/telephony/vt/SecVideoProvider;

    iget-object v2, p0, Lcom/android/services/telephony/vt/SecVideoProvider$1;->val$requestProfile:Landroid/telecom/VideoProfile;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/services/telephony/vt/SecVideoProvider;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    return-void
.end method

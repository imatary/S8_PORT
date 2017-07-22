.class Lcom/android/phone/EnhancedLteServices$3;
.super Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;
.source "EnhancedLteServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EnhancedLteServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EnhancedLteServices;


# direct methods
.method constructor <init>(Lcom/android/phone/EnhancedLteServices;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EnhancedLteServices$3;->this$0:Lcom/android/phone/EnhancedLteServices;

    invoke-direct {p0}, Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFtStateChanged(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/EnhancedLteServices;->-set0(I)I

    :goto_0
    const-string/jumbo v0, "EnhancedLteServices"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFtStateChanged, event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/EnhancedLteServices;->-set0(I)I

    goto :goto_0
.end method

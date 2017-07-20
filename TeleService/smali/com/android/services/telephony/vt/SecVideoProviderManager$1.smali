.class Lcom/android/services/telephony/vt/SecVideoProviderManager$1;
.super Lcom/android/services/telephony/vt/BaseVideoProvider$ProviderCallback;
.source "SecVideoProviderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/vt/SecVideoProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/vt/SecVideoProviderManager;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/vt/SecVideoProviderManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager$1;->this$0:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    invoke-direct {p0}, Lcom/android/services/telephony/vt/BaseVideoProvider$ProviderCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onProviderCallbackReceived(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoProviderManager$1;->this$0:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/vt/SecVideoProviderManager;->notifySecVideoCallCallback(Landroid/os/Bundle;)V

    return-void
.end method

.class Lcom/android/phone/mobilenetworks/kor/NetworkOperators$2;
.super Ljava/lang/Object;
.source "NetworkOperators.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/kor/NetworkOperators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$2;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string/jumbo v0, "connection created, binding local service."

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap10(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$2;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    check-cast p2, Lcom/android/phone/NetworkQueryService$LocalBinder;

    invoke-virtual {p2}, Lcom/android/phone/NetworkQueryService$LocalBinder;->getService()Lcom/android/phone/INetworkQueryService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-set2(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string/jumbo v0, "connection disconnected, cleaning local binding."

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap10(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$2;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-set2(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;

    return-void
.end method

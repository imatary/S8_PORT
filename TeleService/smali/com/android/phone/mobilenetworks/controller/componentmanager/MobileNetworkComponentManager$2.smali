.class Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager$2;
.super Landroid/database/ContentObserver;
.source "MobileNetworkComponentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->registerContentObserver(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager$2;->this$0:Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager$2;->this$0:Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->-wrap0(Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;I)V

    return-void
.end method

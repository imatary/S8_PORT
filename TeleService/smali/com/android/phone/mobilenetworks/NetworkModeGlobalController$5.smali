.class Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$5;
.super Ljava/lang/Object;
.source "NetworkModeGlobalController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->showSearchingForDialog(Lcom/android/phone/MobileNetworkSettings;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;

.field final synthetic val$settings:Lcom/android/phone/MobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$5;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;

    iput-object p2, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$5;->val$settings:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$5;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController$5;->val$settings:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;->-wrap1(Lcom/android/phone/mobilenetworks/NetworkModeGlobalController;Lcom/android/phone/MobileNetworkSettings;)V

    return-void
.end method

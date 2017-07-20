.class Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$11;
.super Ljava/lang/Object;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->setMobileNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$11;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    iput-boolean p2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$11;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$11;->val$enabled:Z

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->setMobileDataEnable(Z)V

    return-void
.end method

.class Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog$1;
.super Ljava/lang/Object;
.source "MobileNetworksDialogManager.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog$1;->this$1:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog$1;->this$1:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->-get1(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog$1;->this$1:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->-get0(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

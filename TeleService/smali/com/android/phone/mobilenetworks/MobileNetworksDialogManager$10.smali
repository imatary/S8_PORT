.class Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$10;
.super Ljava/lang/Object;
.source "MobileNetworksDialogManager.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->showDataSelectionPopUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$10;->this$0:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$10;->this$0:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->-wrap0(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

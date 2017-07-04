.class Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup$1;
.super Ljava/lang/Object;
.source "SelectTvPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;->createSelectTvPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup$1;->this$0:Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup$1;->this$0:Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;

    invoke-static {v1}, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;->access$000(Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup$1;->this$0:Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;

    invoke-static {v1}, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;->access$000(Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup$1;->this$0:Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;

    invoke-static {v1}, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;->access$100(Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;)Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup$1;->this$0:Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;

    invoke-static {v1}, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;->access$100(Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;)Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->selectDeviceToTV(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

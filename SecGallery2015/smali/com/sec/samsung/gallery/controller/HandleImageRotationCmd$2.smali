.class Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$2;
.super Ljava/lang/Object;
.source "HandleImageRotationCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->showRotateMotionPanoramaDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->access$100(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    const-wide/32 v2, 0x1000000

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/gallery3d/data/MediaItem;->setSubAttribute(JZ)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->access$100(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "Motion_Panorama_MP4_000"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "Motion_Panorama_Info"

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->access$200(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;

    const/16 v2, 0x8e0

    invoke-static {v1, v0, v2}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->access$300(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->access$400(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;)V

    return-void
.end method

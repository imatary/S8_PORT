.class Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$2$1;
.super Ljava/lang/Thread;
.source "AlbumChoiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$2;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$2;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$2$1;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$2;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsEnabledWeChatVideoShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceAlbumViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$2$1;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$2;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$2;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$500(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$2$1;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$2;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$2;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$600(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)V

    goto :goto_0
.end method

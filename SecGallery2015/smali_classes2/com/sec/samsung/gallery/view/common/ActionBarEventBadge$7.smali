.class Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$7;
.super Ljava/lang/Object;
.source "ActionBarEventBadge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->updateEventBadgeBesideTitle(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$7;->this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    iput p2, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$7;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$7;->this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->access$000(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1001"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$7;->this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    iget v1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$7;->val$count:I

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->access$1000(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;I)V

    return-void
.end method

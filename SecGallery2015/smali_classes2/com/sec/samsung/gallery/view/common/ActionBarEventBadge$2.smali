.class Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$2;
.super Ljava/lang/Object;
.source "ActionBarEventBadge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->updateEventBadge(I)V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$2;->this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    iput p2, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$2;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$2;->this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    # getter for: Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->access$300(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;)Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$2;->this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    # invokes: Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->removeHintPopup()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->access$200(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$2;->this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    iget v2, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$2;->val$count:I

    # invokes: Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->updateEventBadgeMenuIcon(Landroid/view/View;I)V
    invoke-static {v1, v0, v2}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->access$400(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;Landroid/view/View;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$2;->this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    iget v2, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$2;->val$count:I

    # invokes: Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->updateEventBadgeBesideTitle(Landroid/view/View;I)V
    invoke-static {v1, v0, v2}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->access$500(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;Landroid/view/View;I)V

    goto :goto_0
.end method

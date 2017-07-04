.class Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup$1;
.super Ljava/lang/Object;
.source "VisionIntelligenceHelpPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->show(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->access$000(Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vision_intelligence_help"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->access$102(Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;Z)Z

    return-void
.end method

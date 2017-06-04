.class Lcom/sec/samsung/gallery/view/common/SortByTypeDialog$1;
.super Ljava/lang/Object;
.source "SortByTypeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;->showDialog(Lcom/sec/samsung/gallery/core/MediaType$SortByType;Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog$1;->this$0:Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog$1;->this$0:Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;->mScreenId:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;->access$000(Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1105"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

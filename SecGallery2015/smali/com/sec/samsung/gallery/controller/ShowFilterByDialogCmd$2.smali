.class Lcom/sec/samsung/gallery/controller/ShowFilterByDialogCmd$2;
.super Ljava/lang/Object;
.source "ShowFilterByDialogCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowFilterByDialogCmd;->createFilterByDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowFilterByDialogCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowFilterByDialogCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowFilterByDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowFilterByDialogCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowFilterByDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowFilterByDialogCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ShowFilterByDialogCmd;->access$000(Lcom/sec/samsung/gallery/controller/ShowFilterByDialogCmd;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "is_filter_by_shared_story"

    if-ne p2, v0, :cond_0

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowFilterByDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowFilterByDialogCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowFilterByDialogCmd;->access$000(Lcom/sec/samsung/gallery/controller/ShowFilterByDialogCmd;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const-string/jumbo v0, "200"

    const-string/jumbo v1, "3004"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

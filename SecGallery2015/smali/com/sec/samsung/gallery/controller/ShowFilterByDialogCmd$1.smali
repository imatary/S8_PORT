.class Lcom/sec/samsung/gallery/controller/ShowFilterByDialogCmd$1;
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowFilterByDialogCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ShowFilterByDialogCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string/jumbo v0, "200"

    const-string/jumbo v1, "3005"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

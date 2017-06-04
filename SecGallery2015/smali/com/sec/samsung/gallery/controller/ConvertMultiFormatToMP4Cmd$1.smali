.class Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$1;
.super Ljava/lang/Object;
.source "ConvertMultiFormatToMP4Cmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->createDialogForMyFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;

    # invokes: Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->callMyFiles()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->access$200(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;)V

    return-void
.end method

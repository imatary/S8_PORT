.class Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask$2;
.super Ljava/lang/Object;
.source "ConvertMultiFormatToMP4Cmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;

.field final synthetic val$params1:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask$2;->this$1:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask$2;->val$params1:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask$2;->this$1:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->access$1000(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "SHOW_IMAGE_VIDEO_SHARE_DIALOG"

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask$2;->val$params1:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.class Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask$1;
.super Ljava/lang/Object;
.source "ConvertMultiFormatToMP4Cmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->doInBackground([Ljava/util/ArrayList;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask$1;->this$1:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask$1;->this$1:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;

    # getter for: Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->infoList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->access$700(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask$1;->this$1:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;

    # getter for: Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->mIndex:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->access$600(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;

    # getter for: Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;->mImageType:I
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;->access$800(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask$1;->this$1:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;

    iget-object v1, v0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask$1;->this$1:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;

    # getter for: Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->infoList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->access$700(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask$1;->this$1:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;

    # getter for: Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->mIndex:I
    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->access$600(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;

    # getter for: Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;->mOutPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;->access$400(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->updateItemDBForDuration(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->access$900(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

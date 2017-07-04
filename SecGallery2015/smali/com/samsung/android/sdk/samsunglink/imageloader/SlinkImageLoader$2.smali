.class Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;
.super Ljava/lang/Object;
.source "SlinkImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->loadDeviceIcon(JLcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconSize;Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;[ILcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageListener;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

.field private final synthetic val$deviceId:J

.field private final synthetic val$imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

.field private final synthetic val$size:Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconSize;

.field private final synthetic val$states:[I

.field private final synthetic val$theme:Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;JLcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconSize;Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;[ILcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    iput-wide p2, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;->val$deviceId:J

    iput-object p4, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;->val$size:Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconSize;

    iput-object p5, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;->val$theme:Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;

    iput-object p6, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;->val$states:[I

    iput-object p7, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;->val$imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    sget-boolean v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "load device icon start for device "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;->val$deviceId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    invoke-static {v0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$1(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;)Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;->val$deviceId:J

    iget-object v4, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;->val$size:Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconSize;

    iget-object v5, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;->val$theme:Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;

    iget-object v6, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;->val$states:[I

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device;->getDeviceIcon(Landroid/content/Context;JLcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconSize;Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;[I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    invoke-static {v0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$10(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2$2;

    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;->val$imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    iget-wide v4, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;->val$deviceId:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2$2;-><init>(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;J)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :catch_0
    move-exception v7

    sget-boolean v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "FileNotFoundException for device icon for device "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;->val$deviceId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    invoke-static {v0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$10(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2$1;

    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;->val$imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    invoke-direct {v1, p0, v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2$1;-><init>(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

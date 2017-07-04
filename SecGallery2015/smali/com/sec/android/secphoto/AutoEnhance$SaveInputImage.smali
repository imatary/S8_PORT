.class Lcom/sec/android/secphoto/AutoEnhance$SaveInputImage;
.super Ljava/lang/Object;
.source "AutoEnhance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/secphoto/AutoEnhance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveInputImage"
.end annotation


# instance fields
.field final height:I

.field final inputBuffer:[I

.field final width:I


# direct methods
.method public constructor <init>([III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/secphoto/AutoEnhance$SaveInputImage;->inputBuffer:[I

    iput p2, p0, Lcom/sec/android/secphoto/AutoEnhance$SaveInputImage;->width:I

    iput p3, p0, Lcom/sec/android/secphoto/AutoEnhance$SaveInputImage;->height:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Lcom/sec/android/secphoto/Profiling;

    invoke-direct {v0}, Lcom/sec/android/secphoto/Profiling;-><init>()V

    invoke-virtual {v0}, Lcom/sec/android/secphoto/Profiling;->Start()J

    invoke-static {}, Lcom/sec/android/secphoto/AutoEnhance;->access$000()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/secphoto/AutoEnhance$SaveInputImage;->inputBuffer:[I

    iget v3, p0, Lcom/sec/android/secphoto/AutoEnhance$SaveInputImage;->width:I

    iget v4, p0, Lcom/sec/android/secphoto/AutoEnhance$SaveInputImage;->height:I

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/android/secphoto/jni/AutoEnhanceNative;->ImageEncode(Ljava/lang/String;[IIII)I

    const-string/jumbo v1, "AE: New Thread, Input image Encoding Time is "

    invoke-virtual {v0, v1}, Lcom/sec/android/secphoto/Profiling;->Stop(Ljava/lang/String;)J

    return-void
.end method

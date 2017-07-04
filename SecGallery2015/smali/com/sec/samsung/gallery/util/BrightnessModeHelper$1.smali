.class final Lcom/sec/samsung/gallery/util/BrightnessModeHelper$1;
.super Ljava/lang/Object;
.source "BrightnessModeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/util/BrightnessModeHelper;->setBrightnessControl(Lcom/sec/android/gallery3d/interfaces/LibraryContext;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bManual:Z

.field final synthetic val$brightness:I

.field final synthetic val$context:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field final synthetic val$set:Z


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;ZZI)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/util/BrightnessModeHelper$1;->val$context:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/util/BrightnessModeHelper$1;->val$set:Z

    iput-boolean p3, p0, Lcom/sec/samsung/gallery/util/BrightnessModeHelper$1;->val$bManual:Z

    iput p4, p0, Lcom/sec/samsung/gallery/util/BrightnessModeHelper$1;->val$brightness:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/BrightnessModeHelper$1;->val$context:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/util/BrightnessModeHelper$1;->val$set:Z

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/util/BrightnessModeHelper$1;->val$bManual:Z

    iget v3, p0, Lcom/sec/samsung/gallery/util/BrightnessModeHelper$1;->val$brightness:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/util/BrightnessModeHelper;->access$000(Landroid/content/Context;ZZI)V

    return-void
.end method

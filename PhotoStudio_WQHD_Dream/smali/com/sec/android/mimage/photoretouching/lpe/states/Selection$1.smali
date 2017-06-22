.class Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$1;
.super Ljava/lang/Object;
.source "Selection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->doOriginalDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;

.field final synthetic val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

.field final synthetic val$height:I

.field final synthetic val$preHeight:I

.field final synthetic val$preWidth:I

.field final synthetic val$tmpMaskBuffer:[B

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;II[BIILcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$1;->val$width:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$1;->val$height:I

    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$1;->val$tmpMaskBuffer:[B

    iput p5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$1;->val$preWidth:I

    iput p6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$1;->val$preHeight:I

    iput-object p7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$1;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$1;->val$width:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$1;->val$height:I

    mul-int/2addr v0, v1

    new-array v3, v0, [B

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$1;->val$tmpMaskBuffer:[B

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$1;->val$preWidth:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$1;->val$preHeight:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$1;->val$width:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$1;->val$height:I

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->makeScaleMaskBuff([BII[BII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$1;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->updateMaskBuffer([B)V

    return-void
.end method

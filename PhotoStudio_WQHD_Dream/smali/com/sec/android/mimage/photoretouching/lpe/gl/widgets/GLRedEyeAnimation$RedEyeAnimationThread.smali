.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;
.super Ljava/lang/Thread;
.source "GLRedEyeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RedEyeAnimationThread"
.end annotation


# instance fields
.field private mAnimTexture:I

.field private mCurrentFrame:I

.field private mRunning:Z

.field private mThreadBuffer:Ljava/nio/FloatBuffer;

.field private mThreadData:[F

.field public posX:I

.field public posY:I

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;II)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->mRunning:Z

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->mCurrentFrame:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->mAnimTexture:I

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->posX:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->posY:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->createBuffer()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->mAnimTexture:I

    return v0
.end method


# virtual methods
.method public createBuffer()V
    .locals 6

    const-string v0, "PEDIT_GLRedEyeAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RedEyeAnimationThread :: createBuffer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->posX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->posY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->posX:I

    int-to-float v0, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->THUMB_SIZE:I
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->access$000()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->posY:I

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->THUMB_SIZE:I
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->access$000()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->THUMB_SIZE:I
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->access$000()I

    move-result v2

    int-to-float v2, v2

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->THUMB_SIZE:I
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->access$000()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFII)[F

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->mThreadData:[F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->mThreadData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->mThreadData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->mThreadBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->mThreadBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public destroy()V
    .locals 2

    const-string v0, "PEDIT_GLRedEyeAnimation"

    const-string v1, "RedEyeAnimationThread :: destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public draw()V
    .locals 11

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->mRunning:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mAnimationFrame:[Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;)[Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->mCurrentFrame:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mAnimationFrame:[Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;)[Landroid/graphics/Bitmap;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    const-string v1, "PEDIT_GLRedEyeAnimation"

    const-string v2, "RedEyeAnimationThread :: draw"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->mAnimTexture:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->mAnimTexture:I

    :cond_0
    const/16 v1, 0xde1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->mAnimTexture:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mAnimationFrame:[Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;)[Landroid/graphics/Bitmap;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->mCurrentFrame:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const/16 v1, 0xde1

    invoke-static {v1}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v8

    iget v1, v8, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v1, "a_Position"

    invoke-virtual {v8, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v0

    const-string v1, "a_TextureCoordinate"

    invoke-virtual {v8, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v10

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->mThreadBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getTextureBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    move v1, v10

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v10}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v1, 0xde1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->mAnimTexture:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v1, "u_Sampler"

    invoke-virtual {v8, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v9

    const/4 v1, 0x0

    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v1, "u_Matrix"

    invoke-virtual {v8, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v7

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mThreadMatrix:[F
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;)[F

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mThreadMatrix:[F
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;)[F

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v7, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->mRunning:Z

    const-string v1, "PEDIT_GLRedEyeAnimation"

    const-string v2, "RedEyeAnimationThread :: run start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->mCurrentFrame:I

    :goto_0
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->mCurrentFrame:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mId:[I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;)[I

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    const/16 v1, 0x3e8

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mId:[I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;)[I

    move-result-object v2

    array-length v2, v2

    div-int/2addr v1, v2

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->mCurrentFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->mCurrentFrame:I

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_0
    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->mRunning:Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->mAnimTexture:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v1

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread$1;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->queueEvent(Ljava/lang/Runnable;)V

    :cond_1
    const-string v1, "PEDIT_GLRedEyeAnimation"

    const-string v2, "RedEyeAnimationThread :: run finished"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

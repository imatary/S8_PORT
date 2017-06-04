.class Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;
.super Ljava/lang/Object;
.source "GlAbsMultiSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Candidate"
.end annotation


# static fields
.field private static final RENEWAL_ADD:I = 0x2

.field static final RENEWAL_INVALID:I = 0x0

.field private static final RENEWAL_KEEP:I = 0x1

.field private static final RENEWAL_REMOVE:I = 0x3


# instance fields
.field private mIndex:I

.field private mRect:Landroid/graphics/Rect;

.field private mRenewalType:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;I)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->mRenewalType:I

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->mIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;Landroid/graphics/Rect;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->meet(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->mIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->getIndex()I

    move-result v0

    return v0
.end method

.method private getIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->mIndex:I

    return v0
.end method

.method private meet(Landroid/graphics/Rect;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->mRenewalType:I

    if-nez v3, :cond_1

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->mRenewalType:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->mRect:Landroid/graphics/Rect;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->mRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->mRect:Landroid/graphics/Rect;

    invoke-static {p1, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->mIndex:I

    invoke-interface {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->getItemRealRect(I)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {p1, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    :goto_1
    move v1, v2

    goto :goto_0

    :cond_5
    move v2, v1

    goto :goto_1
.end method


# virtual methods
.method public getRenewalType()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->mRenewalType:I

    return v0
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->mIndex:I

    return-void
.end method

.method public setRect(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setRenewalType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->mRenewalType:I

    return-void
.end method

.class public Lcom/android/dex/ClassData$Field;
.super Ljava/lang/Object;
.source "ClassData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dex/ClassData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# instance fields
.field private final accessFlags:I

.field private final fieldIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/dex/ClassData$Field;->fieldIndex:I

    iput p2, p0, Lcom/android/dex/ClassData$Field;->accessFlags:I

    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    iget v0, p0, Lcom/android/dex/ClassData$Field;->accessFlags:I

    return v0
.end method

.method public getFieldIndex()I
    .locals 1

    iget v0, p0, Lcom/android/dex/ClassData$Field;->fieldIndex:I

    return v0
.end method

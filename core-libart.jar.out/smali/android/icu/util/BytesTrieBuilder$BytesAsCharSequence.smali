.class final Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;
.super Ljava/lang/Object;
.source "BytesTrieBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/BytesTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BytesAsCharSequence"
.end annotation


# instance fields
.field private len:I

.field private s:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;->s:[B

    iput p2, p0, Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;->len:I

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 1

    iget-object v0, p0, Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;->s:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    return v0
.end method

.method public length()I
    .locals 1

    iget v0, p0, Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;->len:I

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.class final Landroid/icu/impl/Norm2AllModes$1;
.super Landroid/icu/impl/SoftCache;
.source "Norm2AllModes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Norm2AllModes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/icu/impl/Norm2AllModes;",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Ljava/nio/ByteBuffer;)Landroid/icu/impl/Norm2AllModes;
    .locals 5

    const/4 v4, 0x0

    if-nez p2, :cond_0

    new-instance v1, Landroid/icu/impl/Normalizer2Impl;

    invoke-direct {v1}, Landroid/icu/impl/Normalizer2Impl;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".nrm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/impl/Normalizer2Impl;->load(Ljava/lang/String;)Landroid/icu/impl/Normalizer2Impl;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/icu/impl/Norm2AllModes;

    invoke-direct {v1, v0, v4}, Landroid/icu/impl/Norm2AllModes;-><init>(Landroid/icu/impl/Normalizer2Impl;Landroid/icu/impl/Norm2AllModes;)V

    return-object v1

    :cond_0
    new-instance v1, Landroid/icu/impl/Normalizer2Impl;

    invoke-direct {v1}, Landroid/icu/impl/Normalizer2Impl;-><init>()V

    invoke-virtual {v1, p2}, Landroid/icu/impl/Normalizer2Impl;->load(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Normalizer2Impl;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/Norm2AllModes$1;->createInstance(Ljava/lang/String;Ljava/nio/ByteBuffer;)Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    return-object v0
.end method

.class public Landroid/icu/impl/UResource$TableSink;
.super Ljava/lang/Object;
.source "UResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TableSink"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrCreateArraySink(Landroid/icu/impl/UResource$Key;I)Landroid/icu/impl/UResource$ArraySink;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrCreateTableSink(Landroid/icu/impl/UResource$Key;I)Landroid/icu/impl/UResource$TableSink;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public leave()V
    .locals 0

    return-void
.end method

.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 0

    return-void
.end method

.method public putNoFallback(Landroid/icu/impl/UResource$Key;)V
    .locals 0

    return-void
.end method

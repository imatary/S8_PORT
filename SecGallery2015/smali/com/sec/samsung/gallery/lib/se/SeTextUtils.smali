.class public Lcom/sec/samsung/gallery/lib/se/SeTextUtils;
.super Ljava/lang/Object;
.source "SeTextUtils.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/TextUtilsInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C
    .locals 1

    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v0

    return-object v0
.end method

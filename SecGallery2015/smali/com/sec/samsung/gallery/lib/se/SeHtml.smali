.class public Lcom/sec/samsung/gallery/lib/se/SeHtml;
.super Ljava/lang/Object;
.source "SeHtml.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/HtmlInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

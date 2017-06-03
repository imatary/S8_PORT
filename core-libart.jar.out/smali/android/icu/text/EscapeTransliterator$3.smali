.class final Landroid/icu/text/EscapeTransliterator$3;
.super Ljava/lang/Object;
.source "EscapeTransliterator.java"

# interfaces
.implements Landroid/icu/text/Transliterator$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/EscapeTransliterator;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;
    .locals 12

    new-instance v9, Landroid/icu/text/EscapeTransliterator;

    const-string/jumbo v8, "Any-Hex/C"

    const-string/jumbo v10, "\\u"

    const-string/jumbo v11, ""

    new-instance v0, Landroid/icu/text/EscapeTransliterator;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "\\U"

    const-string/jumbo v3, ""

    const/16 v4, 0x10

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/icu/text/EscapeTransliterator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLandroid/icu/text/EscapeTransliterator;)V

    const/16 v5, 0x10

    const/4 v6, 0x4

    const/4 v7, 0x1

    move-object v1, v9

    move-object v2, v8

    move-object v3, v10

    move-object v4, v11

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Landroid/icu/text/EscapeTransliterator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLandroid/icu/text/EscapeTransliterator;)V

    return-object v9
.end method

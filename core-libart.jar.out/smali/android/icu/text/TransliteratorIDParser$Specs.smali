.class Landroid/icu/text/TransliteratorIDParser$Specs;
.super Ljava/lang/Object;
.source "TransliteratorIDParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TransliteratorIDParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Specs"
.end annotation


# instance fields
.field public filter:Ljava/lang/String;

.field public sawSource:Z

.field public source:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public variant:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->source:Ljava/lang/String;

    iput-object p2, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->target:Ljava/lang/String;

    iput-object p3, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->variant:Ljava/lang/String;

    iput-boolean p4, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->sawSource:Z

    iput-object p5, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    return-void
.end method

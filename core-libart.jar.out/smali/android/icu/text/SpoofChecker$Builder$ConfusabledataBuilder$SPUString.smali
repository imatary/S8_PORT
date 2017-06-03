.class Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SPUString"
.end annotation


# instance fields
.field fStr:Ljava/lang/String;

.field fStrTableIndex:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStrTableIndex:I

    return-void
.end method

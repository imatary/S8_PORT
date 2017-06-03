.class final Landroid/icu/text/StringSearch$Pattern;
.super Ljava/lang/Object;
.source "StringSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/StringSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Pattern"
.end annotation


# instance fields
.field CELength_:I

.field CE_:[I

.field PCELength_:I

.field PCE_:[J

.field text_:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    iput v0, p0, Landroid/icu/text/StringSearch$Pattern;->CELength_:I

    iput-object p1, p0, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    return-void
.end method

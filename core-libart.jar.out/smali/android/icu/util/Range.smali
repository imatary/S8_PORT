.class Landroid/icu/util/Range;
.super Ljava/lang/Object;
.source "RangeDateRule.java"


# instance fields
.field public rule:Landroid/icu/util/DateRule;

.field public start:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;Landroid/icu/util/DateRule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/util/Range;->start:Ljava/util/Date;

    iput-object p2, p0, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    return-void
.end method

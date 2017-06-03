.class final Landroid/icu/util/STZInfo;
.super Ljava/lang/Object;
.source "STZInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6cef6c8f34397e78L


# instance fields
.field ea:Z

.field edm:I

.field edw:I

.field edwm:I

.field em:I

.field et:I

.field sa:Z

.field sdm:I

.field sdw:I

.field sdwm:I

.field sm:I

.field st:I

.field sy:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/icu/util/STZInfo;->sy:I

    iput v0, p0, Landroid/icu/util/STZInfo;->sm:I

    iput v0, p0, Landroid/icu/util/STZInfo;->em:I

    return-void
.end method


# virtual methods
.method applyTo(Landroid/icu/util/SimpleTimeZone;)V
    .locals 7

    const/4 v6, -0x1

    iget v0, p0, Landroid/icu/util/STZInfo;->sy:I

    if-eq v0, v6, :cond_0

    iget v0, p0, Landroid/icu/util/STZInfo;->sy:I

    invoke-virtual {p1, v0}, Landroid/icu/util/SimpleTimeZone;->setStartYear(I)V

    :cond_0
    iget v0, p0, Landroid/icu/util/STZInfo;->sm:I

    if-eq v0, v6, :cond_1

    iget v0, p0, Landroid/icu/util/STZInfo;->sdm:I

    if-ne v0, v6, :cond_3

    iget v0, p0, Landroid/icu/util/STZInfo;->sm:I

    iget v1, p0, Landroid/icu/util/STZInfo;->sdwm:I

    iget v2, p0, Landroid/icu/util/STZInfo;->sdw:I

    iget v3, p0, Landroid/icu/util/STZInfo;->st:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/icu/util/SimpleTimeZone;->setStartRule(IIII)V

    :cond_1
    :goto_0
    iget v0, p0, Landroid/icu/util/STZInfo;->em:I

    if-eq v0, v6, :cond_2

    iget v0, p0, Landroid/icu/util/STZInfo;->edm:I

    if-ne v0, v6, :cond_5

    iget v0, p0, Landroid/icu/util/STZInfo;->em:I

    iget v1, p0, Landroid/icu/util/STZInfo;->edwm:I

    iget v2, p0, Landroid/icu/util/STZInfo;->edw:I

    iget v3, p0, Landroid/icu/util/STZInfo;->et:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/icu/util/SimpleTimeZone;->setEndRule(IIII)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget v0, p0, Landroid/icu/util/STZInfo;->sdw:I

    if-ne v0, v6, :cond_4

    iget v0, p0, Landroid/icu/util/STZInfo;->sm:I

    iget v1, p0, Landroid/icu/util/STZInfo;->sdm:I

    iget v2, p0, Landroid/icu/util/STZInfo;->st:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/icu/util/SimpleTimeZone;->setStartRule(III)V

    goto :goto_0

    :cond_4
    iget v1, p0, Landroid/icu/util/STZInfo;->sm:I

    iget v2, p0, Landroid/icu/util/STZInfo;->sdm:I

    iget v3, p0, Landroid/icu/util/STZInfo;->sdw:I

    iget v4, p0, Landroid/icu/util/STZInfo;->st:I

    iget-boolean v5, p0, Landroid/icu/util/STZInfo;->sa:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/icu/util/SimpleTimeZone;->setStartRule(IIIIZ)V

    goto :goto_0

    :cond_5
    iget v0, p0, Landroid/icu/util/STZInfo;->edw:I

    if-ne v0, v6, :cond_6

    iget v0, p0, Landroid/icu/util/STZInfo;->em:I

    iget v1, p0, Landroid/icu/util/STZInfo;->edm:I

    iget v2, p0, Landroid/icu/util/STZInfo;->et:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/icu/util/SimpleTimeZone;->setEndRule(III)V

    goto :goto_1

    :cond_6
    iget v1, p0, Landroid/icu/util/STZInfo;->em:I

    iget v2, p0, Landroid/icu/util/STZInfo;->edm:I

    iget v3, p0, Landroid/icu/util/STZInfo;->edw:I

    iget v4, p0, Landroid/icu/util/STZInfo;->et:I

    iget-boolean v5, p0, Landroid/icu/util/STZInfo;->ea:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/icu/util/SimpleTimeZone;->setEndRule(IIIIZ)V

    goto :goto_1
.end method

.method setEnd(IIIIIZ)V
    .locals 0

    iput p1, p0, Landroid/icu/util/STZInfo;->em:I

    iput p2, p0, Landroid/icu/util/STZInfo;->edwm:I

    iput p3, p0, Landroid/icu/util/STZInfo;->edw:I

    iput p4, p0, Landroid/icu/util/STZInfo;->et:I

    iput p5, p0, Landroid/icu/util/STZInfo;->edm:I

    iput-boolean p6, p0, Landroid/icu/util/STZInfo;->ea:Z

    return-void
.end method

.method setStart(IIIIIZ)V
    .locals 0

    iput p1, p0, Landroid/icu/util/STZInfo;->sm:I

    iput p2, p0, Landroid/icu/util/STZInfo;->sdwm:I

    iput p3, p0, Landroid/icu/util/STZInfo;->sdw:I

    iput p4, p0, Landroid/icu/util/STZInfo;->st:I

    iput p5, p0, Landroid/icu/util/STZInfo;->sdm:I

    iput-boolean p6, p0, Landroid/icu/util/STZInfo;->sa:Z

    return-void
.end method

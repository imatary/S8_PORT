.class Lcom/sec/android/gallery3d/data/TimeCluster;
.super Ljava/lang/Object;
.source "TimeAlbumClustering.java"


# static fields
.field private static final MMDDYY_FORMAT_DAY_MONTH:Ljava/lang/String; = "dd MMM"

.field private static final MMDDYY_FORMAT_MONTH_YEAR:Ljava/lang/String; = "MMM yyyy"

.field private static final TAG:Ljava/lang/String; = "Cluster"


# instance fields
.field private hasLocation:Z

.field private mAddrValues:[[D

.field private mInsertToFirst:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/TimeCluster;->mItems:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/TimeCluster;->mInsertToFirst:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/TimeCluster;->hasLocation:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/TimeCluster;->mItems:Ljava/util/ArrayList;

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/TimeCluster;->mInsertToFirst:Z

    return-void
.end method


# virtual methods
.method public addItem(Lcom/sec/android/gallery3d/data/SmallItem;)V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/TimeCluster;->mInsertToFirst:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeCluster;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    iget-wide v0, p1, Lcom/sec/android/gallery3d/data/SmallItem;->lat:D

    iget-wide v2, p1, Lcom/sec/android/gallery3d/data/SmallItem;->lng:D

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/TimeCluster;->hasLocation:Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeCluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public generateCaption(Landroid/content/Context;I)V
    .locals 24

    const-string/jumbo v9, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/TimeCluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v15, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/TimeCluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/SmallItem;

    iget-wide v0, v3, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    move-wide/from16 v16, v0

    const-wide/16 v22, 0x0

    cmp-long v3, v16, v22

    if-nez v3, :cond_0

    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v22, 0x0

    cmp-long v3, v4, v22

    if-nez v3, :cond_1

    move-wide/from16 v6, v16

    move-wide/from16 v4, v16

    goto :goto_1

    :cond_1
    move-wide/from16 v0, v16

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-wide/from16 v0, v16

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    goto :goto_1

    :cond_2
    packed-switch p2, :pswitch_data_0

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/gallery3d/data/TimeCluster;->mName:Ljava/lang/String;

    return-void

    :pswitch_0
    const v3, 0x10010

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :pswitch_1
    const-string/jumbo v3, "dd MMM"

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v3, "dd MMM"

    invoke-static {v3, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v3, 0x4

    invoke-virtual {v14, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x4

    invoke-virtual {v13, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x10010

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_4
    const v8, 0x10010

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_5
    const v8, 0x10010

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :pswitch_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const-string/jumbo v3, "MMM yyyy"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-static {v3, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v3, "MMM yyyy"

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const v3, 0x10028

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    :cond_6
    const v3, 0x10024

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    :pswitch_3
    const/16 v3, 0x24

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v9

    const/16 v3, 0x28

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, ""

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_3
    const/4 v3, 0x0

    const/4 v8, 0x1

    invoke-virtual {v9, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v3, " "

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v3, "vi"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v9, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v8, 0x1

    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v9, v20

    goto/16 :goto_2

    :cond_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, ""

    invoke-virtual {v9, v3, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_9
    const-string/jumbo v3, "yyyy"

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getAddrValues()[[D
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeCluster;->mAddrValues:[[D

    return-object v0
.end method

.method public getHasLocation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/TimeCluster;->hasLocation:Z

    return v0
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeCluster;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeCluster;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeCluster;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeCluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public setAddToFirst(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/TimeCluster;->mInsertToFirst:Z

    return-void
.end method

.method public setAddrValues([[D)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/TimeCluster;->mAddrValues:[[D

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/TimeCluster;->mLocation:Ljava/lang/String;

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeCluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.class public Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;
.super Landroid/widget/CursorAdapter;
.source "AnsweringMemoListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$OnDataSetChangedListener;,
        Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mCheckedIdArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListType:I

.field private mOnDataSetChangedListener:Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$OnDataSetChangedListener;

.field private mPlayingId:[J

.field private mPrevScrollState:I

.field private mScrollState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;I)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->mListType:I

    const/4 v0, 0x1

    new-array v0, v0, [J

    const-wide/16 v2, -0x2

    aput-wide v2, v0, v1

    iput-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->mPlayingId:[J

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput p4, p0, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->mListType:I

    iput-object p1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getDateFormatByFormatSetting(JLandroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, ""

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->isToday(J)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "h:mm a"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy/MM/dd HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy/MM/dd h:mm a"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->isToday(J)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {p3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "ah:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {p3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy/MM/dd HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy/MM/dd ah:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->isToday(J)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {p3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "H:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "ah:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    invoke-static {p3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy/MM/dd H:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy/MM/dd ah:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private isToday(J)Z
    .locals 5

    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    iget v2, v1, Landroid/text/format/Time;->monthDay:I

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Landroid/text/format/Time;->month:I

    iget v3, v0, Landroid/text/format/Time;->month:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Landroid/text/format/Time;->year:I

    iget v3, v0, Landroid/text/format/Time;->year:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private stringForTime(J)Ljava/lang/String;
    .locals 13

    const-wide/16 v8, 0x3e8

    div-long v6, p1, v8

    const-wide/16 v8, 0x3c

    rem-long v4, v6, v8

    const-wide/16 v8, 0x3c

    div-long v8, v6, v8

    const-wide/16 v10, 0x3c

    rem-long v2, v8, v10

    const-wide/16 v8, 0xe10

    div-long v0, v6, v8

    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_0

    const-string/jumbo v8, "%d:%02d:%02d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_0
    const-string/jumbo v8, "%02d:%02d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;

    if-nez v8, :cond_0

    new-instance v8, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;

    invoke-direct {v8, p0}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;-><init>(Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;)V

    const v12, 0x7f10002c

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v8, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;->heardStatus:Landroid/widget/ImageView;

    const v12, 0x7f10002e

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v8, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const v12, 0x7f100030

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v8, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    const v12, 0x7f10002f

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v8, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;->date:Landroid/widget/TextView;

    const v12, 0x7f10002b

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    iput-object v12, v8, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v10, -0x1

    :try_start_0
    const-string/jumbo v12, "memo_duration"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string/jumbo v12, "memo_create_time"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string/jumbo v12, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;->_id:J

    const-string/jumbo v12, "memo_contact_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;->phoneNumber:Ljava/lang/String;

    const-string/jumbo v12, "memo_display_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;->displayName:Ljava/lang/String;

    const-string/jumbo v12, "memo_heard"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string/jumbo v12, "AnsweringMemoListAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mPrevScrollState: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->mPrevScrollState:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " mScrollState : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->mScrollState:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v12, 0x1

    if-ne v12, v7, :cond_3

    iget-object v12, v8, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;->heardStatus:Landroid/widget/ImageView;

    const v13, 0x7f020131

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v12, v8, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->stringForTime(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, v8, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;->date:Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-direct {p0, v2, v3, v0}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->getDateFormatByFormatSetting(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, v8, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;->displayName:Ljava/lang/String;

    if-eqz v12, :cond_1

    iget-object v12, v8, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;->displayName:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_1
    iget-object v12, v8, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v13, v8, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget v12, p0, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->mListType:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    const-string/jumbo v12, "AnsweringMemoListAdapter"

    const-string/jumbo v13, "Type LIST_TYPE_ALL"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->mPlayingId:[J

    const/4 v13, 0x0

    aget-wide v12, v12, v13

    cmp-long v12, v12, v10

    if-eqz v12, :cond_2

    const v12, 0x7f100032

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v6

    const-string/jumbo v12, "AnsweringMemoListAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Exception in binding data "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v12, v8, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;->heardStatus:Landroid/widget/ImageView;

    const v13, 0x7f020132

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    iget-object v12, v8, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v13, v8, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;->displayName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget v12, p0, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->mListType:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2

    iget-object v12, v8, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    iget-object v12, v8, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v12, v8, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v12, v8, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v12, v8, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;->date:Landroid/widget/TextView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v12, v8, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setEnabled(Z)V

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setEnabled(Z)V

    iget-object v12, v8, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v13, p0, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->mListType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "AnsweringMemoListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mListType  = LIST_TYPE_ALL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->mListType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04000d

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->mListType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "AnsweringMemoListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mListType = LIST_TYPE_DELETE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->mListType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04000a

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onContentChanged()V
    .locals 2

    const-string/jumbo v0, "AnsweringMemoListAdapter"

    const-string/jumbo v1, "onContentChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->mOnDataSetChangedListener:Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AnsweringMemoListAdapter"

    const-string/jumbo v1, "Calling onContentChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->mOnDataSetChangedListener:Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$OnDataSetChangedListener;->onContentChanged(Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;)V

    goto :goto_0
.end method

.method public setCheckedIdArrayList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->mCheckedIdArrayList:Ljava/util/ArrayList;

    return-void
.end method

.method public setCurrentPlayingId([J)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->mPlayingId:[J

    return-void
.end method

.method public setOnDataSetChangedListener(Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$OnDataSetChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->mOnDataSetChangedListener:Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$OnDataSetChangedListener;

    return-void
.end method

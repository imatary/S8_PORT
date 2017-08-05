.class public Lcom/android/phone/answeringmemo/AnsweringMemoList;
.super Landroid/app/ListActivity;
.source "AnsweringMemoList.java"

# interfaces
.implements Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$OnDataSetChangedListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/answeringmemo/AnsweringMemoList$1;,
        Lcom/android/phone/answeringmemo/AnsweringMemoList$BackgroundQueryHandler;,
        Lcom/android/phone/answeringmemo/AnsweringMemoList$TeleListener;
    }
.end annotation


# static fields
.field private static speakerEnabled:I


# instance fields
.field final EASY_MODE_SWITCH:Ljava/lang/String;

.field private final FROM_ITEM_CLICK:I

.field private final FROM_SCROLL:I

.field private final FROM_WINDOWFOCUS:I

.field private am:Landroid/media/AudioManager;

.field current:I

.field isActivityResumed:Z

.field isItemDeleted:Z

.field isVisible:I

.field private mAnswerMemoContent:Landroid/content/ContentValues;

.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mBackgroundQueryHandler:Lcom/android/phone/answeringmemo/AnsweringMemoList$BackgroundQueryHandler;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mListAdapter:Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

.field private mListView:Landroid/widget/ListView;

.field mp:Landroid/media/MediaPlayer;

.field playIcon:Landroid/widget/ImageButton;

.field playingId:[J

.field private progress:Landroid/widget/SeekBar;

.field private seekHandler:Landroid/os/Handler;

.field status:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/phone/answeringmemo/AnsweringMemoList;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->am:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/answeringmemo/AnsweringMemoList;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/answeringmemo/AnsweringMemoList;)Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mListAdapter:Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/answeringmemo/AnsweringMemoList;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->progress:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/answeringmemo/AnsweringMemoList;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->seekHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5()I
    .locals 1

    sget v0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->speakerEnabled:I

    return v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->speakerEnabled:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/phone/answeringmemo/AnsweringMemoList;J)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->getTimeString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/answeringmemo/AnsweringMemoList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->hidePlaybackLayout()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->speakerEnabled:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const-string/jumbo v0, "easy_mode_switch"

    iput-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->EASY_MODE_SWITCH:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->progress:Landroid/widget/SeekBar;

    iput-object v4, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->playIcon:Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    iput v5, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->current:I

    new-array v0, v6, [J

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    iput-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->playingId:[J

    iput v5, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->isVisible:I

    iput-boolean v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->isActivityResumed:Z

    iput-boolean v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->isItemDeleted:Z

    iput v6, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->FROM_ITEM_CLICK:I

    iput v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->FROM_SCROLL:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->FROM_WINDOWFOCUS:I

    iput-object v4, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->status:Landroid/widget/TextView;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->seekHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/answeringmemo/AnsweringMemoList$1;

    invoke-direct {v0, p0}, Lcom/android/phone/answeringmemo/AnsweringMemoList$1;-><init>(Lcom/android/phone/answeringmemo/AnsweringMemoList;)V

    iput-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method private getChildNumberForPosition(I)I
    .locals 4

    const/4 v0, -0x1

    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    add-int/2addr v3, v1

    add-int/lit8 v2, v3, -0x1

    if-lt p1, v1, :cond_0

    if-gt p1, v2, :cond_0

    sub-int v0, p1, v1

    :cond_0
    return v0
.end method

.method private getTimeString(J)Ljava/lang/String;
    .locals 13

    const-wide/32 v10, 0xea60

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/32 v6, 0x36ee80

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    div-long v4, p1, v6

    long-to-int v1, v4

    rem-long v4, p1, v6

    div-long/2addr v4, v10

    long-to-int v2, v4

    rem-long v4, p1, v6

    rem-long/2addr v4, v10

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v3, v4

    const-string/jumbo v4, "%02d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "%02d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private hidePlaybackLayout()V
    .locals 8

    const/4 v7, -0x1

    iget v3, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->current:I

    invoke-direct {p0, v3}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->getChildNumberForPosition(I)I

    move-result v0

    if-eq v0, v7, :cond_0

    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f100032

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput v7, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->current:I

    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->playingId:[J

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    iput v7, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->isVisible:I

    :cond_0
    return-void
.end method

.method private showPlaybackLayout(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ListView;Landroid/view/View;II)V
    .locals 12

    const-string/jumbo v8, "AnsweringMemoList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Current : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->current:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " position : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " Call from : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v8, 0x7f100039

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->status:Landroid/widget/TextView;

    const v8, 0x7f10003a

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v8, 0x7f100037

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->playIcon:Landroid/widget/ImageButton;

    const v8, 0x7f100034

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const v8, 0x7f100035

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    const v8, 0x7f100038

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/SeekBar;

    iput-object v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->progress:Landroid/widget/SeekBar;

    const v8, 0x7f020149

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    const v8, 0x7f100032

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    new-instance v8, Lcom/android/phone/answeringmemo/AnsweringMemoList$2;

    invoke-direct {v8, p0, v6}, Lcom/android/phone/answeringmemo/AnsweringMemoList$2;-><init>(Lcom/android/phone/answeringmemo/AnsweringMemoList;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->progress:Landroid/widget/SeekBar;

    new-instance v9, Lcom/android/phone/answeringmemo/AnsweringMemoList$3;

    invoke-direct {v9, p0}, Lcom/android/phone/answeringmemo/AnsweringMemoList$3;-><init>(Lcom/android/phone/answeringmemo/AnsweringMemoList;)V

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    move/from16 v0, p6

    if-ne v0, v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->release()V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    :cond_0
    iget v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->current:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    const/4 v8, 0x1

    move/from16 v0, p6

    if-ne v0, v8, :cond_2

    const/4 v8, 0x0

    sput v8, Lcom/android/phone/answeringmemo/AnsweringMemoList;->speakerEnabled:I

    iget-object v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->am:Landroid/media/AudioManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->am:Landroid/media/AudioManager;

    iget-object v9, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->hidePlaybackLayout()V

    :cond_2
    const/4 v8, 0x1

    move/from16 v0, p6

    if-ne v0, v8, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    iput-object v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->am:Landroid/media/AudioManager;

    iget-object v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->am:Landroid/media/AudioManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    new-instance v8, Landroid/media/MediaPlayer;

    invoke-direct {v8}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    move/from16 v0, p5

    iput v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->current:I

    iget-object v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->playingId:[J

    iget-object v9, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mListView:Landroid/widget/ListView;

    iget v10, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->current:I

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v10

    const/4 v9, 0x0

    aput-wide v10, v8, v9

    const/4 v8, 0x1

    iput v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->isVisible:I

    iget-object v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, p0, v9}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->am:Landroid/media/AudioManager;

    iget-object v9, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    iget-object v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->start()V

    :cond_3
    iget-object v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->progress:Landroid/widget/SeekBar;

    iget-object v9, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v8

    int-to-long v8, v8

    invoke-direct {p0, v8, v9}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->getTimeString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v8, Lcom/android/phone/answeringmemo/AnsweringMemoList;->speakerEnabled:I

    if-nez v8, :cond_7

    const v8, 0x7f020148

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_4
    :goto_0
    const/4 v8, 0x1

    move/from16 v0, p6

    if-ne v0, v8, :cond_5

    iget-object v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    new-instance v9, Lcom/android/phone/answeringmemo/AnsweringMemoList$4;

    invoke-direct {v9, p0}, Lcom/android/phone/answeringmemo/AnsweringMemoList$4;-><init>(Lcom/android/phone/answeringmemo/AnsweringMemoList;)V

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    new-instance v9, Lcom/android/phone/answeringmemo/AnsweringMemoList$5;

    invoke-direct {v9, p0}, Lcom/android/phone/answeringmemo/AnsweringMemoList$5;-><init>(Lcom/android/phone/answeringmemo/AnsweringMemoList;)V

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    iget-object v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->playIcon:Landroid/widget/ImageButton;

    const v9, 0x7f020145

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_2
    new-instance v8, Lcom/android/phone/answeringmemo/AnsweringMemoList$6;

    invoke-direct {v8, p0, v7}, Lcom/android/phone/answeringmemo/AnsweringMemoList$6;-><init>(Lcom/android/phone/answeringmemo/AnsweringMemoList;Landroid/widget/ImageButton;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->playIcon:Landroid/widget/ImageButton;

    new-instance v9, Lcom/android/phone/answeringmemo/AnsweringMemoList$7;

    invoke-direct {v9, p0}, Lcom/android/phone/answeringmemo/AnsweringMemoList$7;-><init>(Lcom/android/phone/answeringmemo/AnsweringMemoList;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v8, 0x1

    move/from16 v0, p6

    if-eq v0, v8, :cond_6

    iget-object v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    iget-object v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->status:Landroid/widget/TextView;

    int-to-long v10, v3

    invoke-direct {p0, v10, v11}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->getTimeString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->progress:Landroid/widget/SeekBar;

    invoke-virtual {v8, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_6
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->seekUpdation()V

    return-void

    :cond_7
    :try_start_1
    sget v8, Lcom/android/phone/answeringmemo/AnsweringMemoList;->speakerEnabled:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    const v8, 0x7f020147

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string/jumbo v8, "AnsweringMemoList"

    const-string/jumbo v9, " Exception playRecording "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    iget-object v8, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->playIcon:Landroid/widget/ImageButton;

    const v9, 0x7f020146

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2
.end method

.method private startMemoListQuery()V
    .locals 9

    const/16 v1, 0x65

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mBackgroundQueryHandler:Lcom/android/phone/answeringmemo/AnsweringMemoList$BackgroundQueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/phone/answeringmemo/AnsweringMemoList$BackgroundQueryHandler;->cancelOperation(I)V

    :try_start_0
    const-string/jumbo v5, "memo_data like ?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const-string/jumbo v0, "%.AnswerMemo%"

    const/4 v1, 0x0

    aput-object v0, v6, v1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mBackgroundQueryHandler:Lcom/android/phone/answeringmemo/AnsweringMemoList$BackgroundQueryHandler;

    sget-object v3, Lcom/android/phone/AnswerMemo$Memos;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v7, "memo_create_time DESC "

    const/16 v1, 0x65

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/answeringmemo/AnsweringMemoList$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v8

    const-string/jumbo v0, "AnsweringMemoList"

    const-string/jumbo v1, "Exception in startMemoListQuery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public isActivityAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10000

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public isScreenActive(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AnsweringMemoList"

    const-string/jumbo v2, "isScreenActive - return true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    if-nez v0, :cond_1

    const-string/jumbo v1, "AnsweringMemoList"

    const-string/jumbo v2, "isScreenActive - (powermanager null)return true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const-string/jumbo v1, "AnsweringMemoList"

    const-string/jumbo v2, "isScreenActive - return false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const v3, 0x7f04000c

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->setContentView(I)V

    :cond_0
    :goto_0
    iput v2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->isVisible:I

    return-void

    :cond_1
    if-nez v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->setContentView(I)V

    goto :goto_0
.end method

.method public onContentChanged(Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;)V
    .locals 2

    const-string/jumbo v0, "AnsweringMemoList"

    const-string/jumbo v1, "onContentChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->startMemoListQuery()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-wide v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d0d32

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0d0d31

    invoke-virtual {p0, v3}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v6, 0x7f0d0d3c

    invoke-virtual {p0, v6}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/phone/answeringmemo/AnsweringMemoList$9;

    invoke-direct {v7, p0, v2, v4, v5}, Lcom/android/phone/answeringmemo/AnsweringMemoList$9;-><init>(Lcom/android/phone/answeringmemo/AnsweringMemoList;IJ)V

    invoke-virtual {v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v6, 0x7f0d08ce

    invoke-virtual {p0, v6}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/phone/answeringmemo/AnsweringMemoList$10;

    invoke-direct {v7, p0}, Lcom/android/phone/answeringmemo/AnsweringMemoList$10;-><init>(Lcom/android/phone/answeringmemo/AnsweringMemoList;)V

    invoke-virtual {v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mDeleteDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mDeleteDialog:Landroid/app/AlertDialog;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    const/4 v3, 0x1

    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x4

    const-string/jumbo v2, "feature_kdi"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0e0096

    invoke-virtual {p0, v2}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->setTheme(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f04000c

    invoke-virtual {p0, v2}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iput-object v2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mAnswerMemoContent:Landroid/content/ContentValues;

    new-instance v2, Lcom/android/phone/answeringmemo/AnsweringMemoList$BackgroundQueryHandler;

    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/answeringmemo/AnsweringMemoList$BackgroundQueryHandler;-><init>(Lcom/android/phone/answeringmemo/AnsweringMemoList;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mBackgroundQueryHandler:Lcom/android/phone/answeringmemo/AnsweringMemoList$BackgroundQueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v6, v3, v4}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;I)V

    iput-object v2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mListAdapter:Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mListAdapter:Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mListAdapter:Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    invoke-virtual {v2, p0}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->setOnDataSetChangedListener(Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$OnDataSetChangedListener;)V

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v2}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->registerForContextMenu(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_1
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    new-instance v2, Lcom/android/phone/answeringmemo/AnsweringMemoList$TeleListener;

    invoke-direct {v2, p0}, Lcom/android/phone/answeringmemo/AnsweringMemoList$TeleListener;-><init>(Lcom/android/phone/answeringmemo/AnsweringMemoList;)V

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6

    const/4 v5, 0x0

    move-object v2, p3

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    const-string/jumbo v3, "memo_display_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const/4 v3, 0x1

    const v4, 0x7f0d0d32

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 16

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "AnsweringMemoList"

    const-string/jumbo v5, "Answering message - emergency mode"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/database/Cursor;

    const-string/jumbo v2, "memo_data"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "memo_mime_type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v2, "memo_display_name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "memo_heard"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "com.sec.android.app.music"

    const-string/jumbo v5, "com.sec.android.app.music.common.activity.SoundPlayerActivity"

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->isActivityAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.sec.android.app.music"

    const-string/jumbo v5, "com.sec.android.app.music.common.activity.SoundPlayerActivity"

    invoke-virtual {v12, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "isAnsweringMemo"

    const/4 v5, 0x1

    invoke-virtual {v12, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "displayName"

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "com.android.phone.fileprovider"

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v12, v15, v13}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    if-nez v11, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mAnswerMemoContent:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mAnswerMemoContent:Landroid/content/ContentValues;

    const-string/jumbo v5, "memo_heard"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/phone/AnswerMemo$Memos;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mAnswerMemoContent:Landroid/content/ContentValues;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p4

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    return-void

    :catch_0
    move-exception v10

    const-string/jumbo v2, "AnsweringMemoList"

    const-string/jumbo v5, "SoundPlayerActivity is not available!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f0d06af

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->showPlaybackLayout(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ListView;Landroid/view/View;II)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v5, 0x2

    const/4 v7, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    return v4

    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, "ListType"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "AnsweringMemoList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ActivityNotFoundException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, "ListType"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return v7

    :catch_1
    move-exception v0

    const-string/jumbo v4, "AnsweringMemoList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ActivityNotFoundException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_2
    const v4, 0x102002c

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v4

    if-gtz v4, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.android.phone"

    const-string/jumbo v5, "com.android.phone.answeringmemo.AnsweringMemoSettings"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x4000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v4, "com.android.phone.MAIN"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_2
    invoke-virtual {p0, v2}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->finish()V

    return v7

    :catch_2
    move-exception v0

    const-string/jumbo v4, "AnsweringMemoList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ActivityNotFoundException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_2
        0x7f1002e5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mListAdapter:Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mListAdapter:Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    invoke-virtual {v2}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mListAdapter:Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    invoke-virtual {v2}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->notifyDataSetChanged()V

    :cond_0
    const-string/jumbo v2, "AnsweringMemoList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mListAdapter.getCount() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mListAdapter:Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    invoke-virtual {v4}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mListAdapter:Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    invoke-virtual {v2}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f120006

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v2, 0x7f10016a

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v2, 0x7f100121

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    invoke-static {}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->getInstance()Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->cancelAnswerMsgNotification()V

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->invalidateOptionsMenu()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->isActivityResumed:Z

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, -0x1

    iget v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->current:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->isVisible:I

    if-ne v0, v5, :cond_1

    iget v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->current:I

    invoke-direct {p0, v0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->getChildNumberForPosition(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iput v6, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->isVisible:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->current:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->isVisible:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->current:I

    invoke-direct {p0, v0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->getChildNumberForPosition(I)I

    move-result v7

    if-eq v7, v3, :cond_0

    iput v5, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->isVisible:I

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v3, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->current:I

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/Cursor;

    const-string/jumbo v0, "memo_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "memo_display_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mListView:Landroid/widget/ListView;

    iget v5, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->current:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->showPlaybackLayout(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ListView;Landroid/view/View;II)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    invoke-direct {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->startMemoListQuery()V

    return-void
.end method

.method public onStop()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    invoke-virtual {p0, p0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->isScreenActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->speakerEnabled:I

    :cond_0
    iget v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->current:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->hidePlaybackLayout()V

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 9

    const/4 v5, 0x0

    const/4 v3, -0x1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onWindowFocusChanged(Z)V

    iget-boolean v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->isActivityResumed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->isItemDeleted:Z

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean v5, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->isActivityResumed:Z

    iput-boolean v5, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->isItemDeleted:Z

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->current:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->current:I

    invoke-direct {p0, v0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->getChildNumberForPosition(I)I

    move-result v7

    if-eq v7, v3, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->isVisible:I

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v3, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->current:I

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/Cursor;

    const-string/jumbo v0, "memo_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "memo_display_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mListView:Landroid/widget/ListView;

    iget v5, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->current:I

    const/4 v6, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->showPlaybackLayout(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ListView;Landroid/view/View;II)V

    :cond_1
    return-void
.end method

.method public seekUpdation()V
    .locals 1

    new-instance v0, Lcom/android/phone/answeringmemo/AnsweringMemoList$8;

    invoke-direct {v0, p0}, Lcom/android/phone/answeringmemo/AnsweringMemoList$8;-><init>(Lcom/android/phone/answeringmemo/AnsweringMemoList;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

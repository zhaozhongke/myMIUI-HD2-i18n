.class public Lcom/miui/player/ui/EqualizerActivity;
.super Landroid/app/Activity;
.source "EqualizerActivity.java"

# interfaces
.implements Lcom/miui/player/MusicUtils$OnDialogCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/EqualizerActivity$OnSaveClickListener;,
        Lcom/miui/player/ui/EqualizerActivity$OnEffectTypeClick;,
        Lcom/miui/player/ui/EqualizerActivity$OnEffectTypeSelected;,
        Lcom/miui/player/ui/EqualizerActivity$EffectTypeAdapter;,
        Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;,
        Lcom/miui/player/ui/EqualizerActivity$VolumeAdjustListener;
    }
.end annotation


# static fields
.field private static final BAND_COUNT:I = 0x5

#the value of this static final field might be set in the static constructor
.field private static final BAND_LEVEL_MAX:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final BAND_LEVEL_MIN:I = 0x0

.field public static final EQUALIZER_PREF_NAME:Ljava/lang/String; = "miui_equalizer"

.field public static final PREF_EQUALIZER_ENABLED:Ljava/lang/String; = "equablzier_enabled"

.field public static final PREF_EQUALIZER_ID:Ljava/lang/String; = "equalizer_id"

.field public static final REMOVE:I = 0x2

.field public static final SAVE_EQUALIZER_CONFIG:I = 0x1

.field private static final SEEK_BAR_IDS:[I = null

.field private static final VOLUME_SEEK_RANGE:I = 0x3e8


# instance fields
.field private final mBandLevels:[I

.field final mBandSeekBar:[Lcom/miui/player/ui/view/VerticalSeekBar;

.field private mConfigText:Landroid/widget/TextView;

.field mEqualizerSurface:Lcom/miui/player/ui/view/EqualizerView;

.field final mIdArr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mNameArr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveText:Landroid/widget/TextView;

.field mSpinnerEnable:Z

.field mVolumeAdjustBySeekBar:Z

.field mVolumeSeekBar:Lcom/miui/player/ui/view/VerticalSeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    sget v0, Lcom/miui/player/ui/view/EqualizerView;->MAX_DB:I

    sget v1, Lcom/miui/player/ui/view/EqualizerView;->SCALE:I

    mul-int/2addr v0, v1

    sput v0, Lcom/miui/player/ui/EqualizerActivity;->BAND_LEVEL_MAX:I

    .line 64
    sget v0, Lcom/miui/player/ui/view/EqualizerView;->MIN_DB:I

    sget v1, Lcom/miui/player/ui/view/EqualizerView;->SCALE:I

    mul-int/2addr v0, v1

    sput v0, Lcom/miui/player/ui/EqualizerActivity;->BAND_LEVEL_MIN:I

    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/player/ui/EqualizerActivity;->SEEK_BAR_IDS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x15t 0x0t 0xct 0x7ft
        0x16t 0x0t 0xct 0x7ft
        0x17t 0x0t 0xct 0x7ft
        0x18t 0x0t 0xct 0x7ft
        0x19t 0x0t 0xct 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/miui/player/ui/EqualizerActivity;->mBandLevels:[I

    .line 74
    new-array v0, v1, [Lcom/miui/player/ui/view/VerticalSeekBar;

    iput-object v0, p0, Lcom/miui/player/ui/EqualizerActivity;->mBandSeekBar:[Lcom/miui/player/ui/view/VerticalSeekBar;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/player/ui/EqualizerActivity;->mNameArr:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/player/ui/EqualizerActivity;->mIdArr:Ljava/util/List;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/EqualizerActivity;->mSpinnerEnable:Z

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/ui/EqualizerActivity;->mVolumeAdjustBySeekBar:Z

    .line 481
    new-instance v0, Lcom/miui/player/ui/EqualizerActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/EqualizerActivity$1;-><init>(Lcom/miui/player/ui/EqualizerActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/EqualizerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/miui/player/ui/EqualizerActivity;->BAND_LEVEL_MIN:I

    return v0
.end method

.method public static getEqualizerConfigId(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 261
    const-string v1, "miui_equalizer"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 262
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "equalizer_id"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static isEqualizerEnabled(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const-string v4, "equablzier_enabled"

    .line 266
    const-string v1, "miui_equalizer"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 267
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "equablzier_enabled"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    invoke-static {p0, v3}, Lcom/miui/player/ui/EqualizerActivity;->setEqualizerEnabled(Landroid/content/Context;Z)V

    move v1, v3

    .line 271
    :goto_0
    return v1

    :cond_0
    const-string v1, "equablzier_enabled"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public static setEqualizerEnabled(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 276
    const-string v0, "miui_equalizer"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 277
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v0, "equablzier_enabled"

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 278
    const/4 v1, 0x0

    .line 279
    .local v1, levels:[I
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 280
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "equablzier_enabled"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 282
    if-eqz p1, :cond_5

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .end local p1
    const/high16 v3, 0x7f0a

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aget-object p1, p1, v3

    .line 285
    .local p1, normal:Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/miui/player/provider/PlayerProviderUtils;->getEqualizerIdByName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 286
    .local v3, normalId:I
    const-string p1, "equalizer_id"

    .end local p1           #normal:Ljava/lang/String;
    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 287
    .local p1, lastId:I
    const/4 v2, -0x1

    .line 288
    .local v2, newId:I
    const/4 v4, -0x1

    if-eq p1, v4, :cond_4

    .line 289
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/miui/player/provider/PlayerProviderUtils;->getEqualizerConfigData(Landroid/content/Context;IZ)[I

    .end local v1           #levels:[I
    move-result-object v1

    .line 290
    .restart local v1       #levels:[I
    if-eqz v1, :cond_2

    .line 291
    move p0, p1

    .end local v2           #newId:I
    .local p0, newId:I
    move p1, p0

    .end local p0           #newId:I
    .local p1, newId:I
    move-object p0, v1

    .line 300
    .end local v1           #levels:[I
    .local p0, levels:[I
    :goto_1
    const-string v1, "equalizer_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 303
    .end local v3           #normalId:I
    .end local p1           #newId:I
    :goto_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 304
    sget-object p1, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    .line 305
    .local p1, service:Lcom/miui/player/IMediaPlaybackService;
    if-eqz p1, :cond_0

    .line 307
    :try_start_0
    invoke-interface {p1, p0}, Lcom/miui/player/IMediaPlaybackService;->updateEqualizerBands([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local p0           #levels:[I
    .end local p1           #service:Lcom/miui/player/IMediaPlaybackService;
    :cond_0
    :goto_3
    return-void

    .line 277
    .local v2, sp:Landroid/content/SharedPreferences;
    .local p0, context:Landroid/content/Context;
    .local p1, enabled:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 292
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v1       #levels:[I
    .local v2, newId:I
    .restart local v3       #normalId:I
    .local p1, lastId:I
    :cond_2
    if-eq p1, v3, :cond_4

    const/4 p1, -0x1

    if-eq v3, p1, :cond_4

    .line 293
    .end local p1           #lastId:I
    const/4 p1, 0x1

    invoke-static {p0, v3, p1}, Lcom/miui/player/provider/PlayerProviderUtils;->getEqualizerConfigData(Landroid/content/Context;IZ)[I

    move-result-object p0

    .line 294
    .end local v1           #levels:[I
    .local p0, levels:[I
    if-eqz p0, :cond_3

    .line 295
    move p1, v3

    .end local v2           #newId:I
    .local p1, newId:I
    goto :goto_1

    .line 308
    .end local v3           #normalId:I
    .local p1, service:Lcom/miui/player/IMediaPlaybackService;
    :catch_0
    move-exception p0

    goto :goto_3

    .end local p1           #service:Lcom/miui/player/IMediaPlaybackService;
    .restart local v2       #newId:I
    .restart local v3       #normalId:I
    :cond_3
    move p1, v2

    .end local v2           #newId:I
    .local p1, newId:I
    goto :goto_1

    .end local p1           #newId:I
    .restart local v1       #levels:[I
    .restart local v2       #newId:I
    .local p0, context:Landroid/content/Context;
    :cond_4
    move p1, v2

    .end local v2           #newId:I
    .restart local p1       #newId:I
    move-object p0, v1

    .end local v1           #levels:[I
    .local p0, levels:[I
    goto :goto_1

    .end local v3           #normalId:I
    .restart local v1       #levels:[I
    .local v2, sp:Landroid/content/SharedPreferences;
    .local p0, context:Landroid/content/Context;
    .local p1, enabled:Z
    :cond_5
    move-object p0, v1

    .end local v1           #levels:[I
    .local p0, levels:[I
    goto :goto_2
.end method


# virtual methods
.method getCurrentConfigData()[I
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 341
    new-array v0, v4, [I

    .line 342
    .local v0, custom:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 343
    iget-object v2, p0, Lcom/miui/player/ui/EqualizerActivity;->mBandSeekBar:[Lcom/miui/player/ui/view/VerticalSeekBar;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/miui/player/ui/view/VerticalSeekBar;->getProgress()I

    move-result v2

    sget v3, Lcom/miui/player/ui/EqualizerActivity;->BAND_LEVEL_MIN:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 346
    :cond_0
    return-object v0
.end method

.method notifyServiceEqualizer(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 317
    sget-object v1, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    .line 318
    .local v1, service:Lcom/miui/player/IMediaPlaybackService;
    if-nez v1, :cond_0

    .line 337
    :goto_0
    return-void

    .line 322
    :cond_0
    if-nez p1, :cond_1

    .line 324
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v2}, Lcom/miui/player/IMediaPlaybackService;->updateEqualizerBands([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 325
    :catch_0
    move-exception v2

    goto :goto_0

    .line 328
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v2, 0x5

    if-ge v0, v2, :cond_2

    .line 329
    iget-object v2, p0, Lcom/miui/player/ui/EqualizerActivity;->mBandLevels:[I

    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mBandSeekBar:[Lcom/miui/player/ui/view/VerticalSeekBar;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/miui/player/ui/view/VerticalSeekBar;->getProgress()I

    move-result v3

    sget v4, Lcom/miui/player/ui/EqualizerActivity;->BAND_LEVEL_MIN:I

    add-int/2addr v3, v4

    aput v3, v2, v0

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 333
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/miui/player/ui/EqualizerActivity;->mBandLevels:[I

    invoke-interface {v1, v2}, Lcom/miui/player/IMediaPlaybackService;->updateEqualizerBands([I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 334
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v3, 0x7f030006

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/EqualizerActivity;->setContentView(I)V

    .line 90
    const v3, 0x7f0c0014

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/EqualizerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/player/ui/view/VerticalSeekBar;

    iput-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mVolumeSeekBar:Lcom/miui/player/ui/view/VerticalSeekBar;

    .line 91
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mVolumeSeekBar:Lcom/miui/player/ui/view/VerticalSeekBar;

    new-instance v4, Lcom/miui/player/ui/EqualizerActivity$VolumeAdjustListener;

    invoke-direct {v4, p0, v5}, Lcom/miui/player/ui/EqualizerActivity$VolumeAdjustListener;-><init>(Lcom/miui/player/ui/EqualizerActivity;Lcom/miui/player/ui/EqualizerActivity$1;)V

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/view/VerticalSeekBar;->setOnSeekBarChangeListener(Lcom/miui/player/ui/view/VerticalSeekBar$OnSeekBarChangeListener;)V

    .line 92
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mVolumeSeekBar:Lcom/miui/player/ui/view/VerticalSeekBar;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/view/VerticalSeekBar;->setMax(I)V

    .line 94
    new-instance v1, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;

    invoke-direct {v1, p0, v5}, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;-><init>(Lcom/miui/player/ui/EqualizerActivity;Lcom/miui/player/ui/EqualizerActivity$1;)V

    .line 95
    .local v1, l:Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;
    sget v3, Lcom/miui/player/ui/EqualizerActivity;->BAND_LEVEL_MAX:I

    sget v4, Lcom/miui/player/ui/EqualizerActivity;->BAND_LEVEL_MIN:I

    sub-int v2, v3, v4

    .line 96
    .local v2, maxProgress:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    .line 97
    iget-object v4, p0, Lcom/miui/player/ui/EqualizerActivity;->mBandSeekBar:[Lcom/miui/player/ui/view/VerticalSeekBar;

    sget-object v3, Lcom/miui/player/ui/EqualizerActivity;->SEEK_BAR_IDS:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/EqualizerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/player/ui/view/VerticalSeekBar;

    aput-object v3, v4, v0

    .line 98
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mBandSeekBar:[Lcom/miui/player/ui/view/VerticalSeekBar;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Lcom/miui/player/ui/view/VerticalSeekBar;->setOnSeekBarChangeListener(Lcom/miui/player/ui/view/VerticalSeekBar$OnSeekBarChangeListener;)V

    .line 99
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mBandSeekBar:[Lcom/miui/player/ui/view/VerticalSeekBar;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Lcom/miui/player/ui/view/VerticalSeekBar;->setMax(I)V

    .line 100
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mBandSeekBar:[Lcom/miui/player/ui/view/VerticalSeekBar;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/view/VerticalSeekBar;->setTag(Ljava/lang/Object;)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    const v3, 0x7f0c0011

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/EqualizerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mConfigText:Landroid/widget/TextView;

    .line 104
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mConfigText:Landroid/widget/TextView;

    new-instance v4, Lcom/miui/player/ui/EqualizerActivity$OnEffectTypeClick;

    invoke-direct {v4, p0, v5}, Lcom/miui/player/ui/EqualizerActivity$OnEffectTypeClick;-><init>(Lcom/miui/player/ui/EqualizerActivity;Lcom/miui/player/ui/EqualizerActivity$1;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v3, 0x7f0c0012

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/EqualizerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mSaveText:Landroid/widget/TextView;

    .line 107
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mSaveText:Landroid/widget/TextView;

    new-instance v4, Lcom/miui/player/ui/EqualizerActivity$OnSaveClickListener;

    invoke-direct {v4, p0, v5}, Lcom/miui/player/ui/EqualizerActivity$OnSaveClickListener;-><init>(Lcom/miui/player/ui/EqualizerActivity;Lcom/miui/player/ui/EqualizerActivity$1;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v3, 0x7f0c001a

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/EqualizerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/player/ui/view/EqualizerView;

    iput-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mEqualizerSurface:Lcom/miui/player/ui/view/EqualizerView;

    .line 110
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/EqualizerActivity;->setVolumeControlStream(I)V

    .line 111
    return-void
.end method

.method public onDialogResult(IZLandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "confirm"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 166
    packed-switch p1, :pswitch_data_0

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 168
    :pswitch_0
    if-eqz p2, :cond_0

    .line 169
    if-eqz p3, :cond_0

    .line 170
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 171
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/miui/player/ui/EqualizerActivity;->updateIdAndNameArr()V

    .line 173
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 174
    .local v0, newId:I
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/EqualizerActivity;->saveEqualizerConfigId(I)V

    .line 175
    invoke-virtual {p0, v0, v3}, Lcom/miui/player/ui/EqualizerActivity;->refreshEqualizer(IZ)V

    .line 176
    const v2, 0x7f0800db

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 141
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 161
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 146
    :pswitch_0
    invoke-static {p0}, Lcom/miui/player/ui/EqualizerActivity;->getEqualizerConfigId(Landroid/content/Context;)I

    move-result v0

    .line 147
    .local v0, id:I
    if-eq v0, v6, :cond_0

    .line 148
    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/miui/player/ui/EqualizerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/player/provider/PlayerStore$MiuiEqualizer;->EXTERNAL_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    new-array v4, v8, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0}, Lcom/miui/player/ui/EqualizerActivity;->updateIdAndNameArr()V

    .line 154
    :cond_1
    invoke-virtual {p0, v6}, Lcom/miui/player/ui/EqualizerActivity;->saveEqualizerConfigId(I)V

    .line 155
    invoke-virtual {p0, v6, v8}, Lcom/miui/player/ui/EqualizerActivity;->refreshEqualizer(IZ)V

    .line 156
    invoke-virtual {p0, v7}, Lcom/miui/player/ui/EqualizerActivity;->notifyServiceEqualizer(Z)V

    .line 157
    const v1, 0x7f0800da

    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/miui/player/ui/EqualizerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/EqualizerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 127
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 131
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 132
    invoke-static {p0}, Lcom/miui/player/ui/EqualizerActivity;->getEqualizerConfigId(Landroid/content/Context;)I

    move-result v0

    .line 133
    .local v0, id:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 134
    const/4 v1, 0x2

    const v2, 0x7f0800d9

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020030

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 136
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 116
    invoke-virtual {p0}, Lcom/miui/player/ui/EqualizerActivity;->updateIdAndNameArr()V

    .line 117
    invoke-virtual {p0}, Lcom/miui/player/ui/EqualizerActivity;->refreshEqualizer()V

    .line 118
    invoke-virtual {p0}, Lcom/miui/player/ui/EqualizerActivity;->refreshVolume()V

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/miui/player/ui/EqualizerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/ui/EqualizerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    return-void
.end method

.method refreshEqualizer()V
    .locals 2

    .prologue
    .line 220
    invoke-static {p0}, Lcom/miui/player/ui/EqualizerActivity;->getEqualizerConfigId(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/ui/EqualizerActivity;->refreshEqualizer(IZ)V

    .line 221
    return-void
.end method

.method refreshEqualizer(IZ)V
    .locals 1
    .parameter "id"
    .parameter "refreshBars"

    .prologue
    .line 225
    invoke-static {p0, p1}, Lcom/miui/player/provider/PlayerProviderUtils;->getEqualizerConfigData(Landroid/content/Context;I)[I

    move-result-object v0

    .line 226
    .local v0, levels:[I
    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/player/ui/EqualizerActivity;->refreshEqualizer(I[IZ)V

    .line 227
    return-void
.end method

.method refreshEqualizer(I[IZ)V
    .locals 5
    .parameter "id"
    .parameter "levels"
    .parameter "refreshBars"

    .prologue
    .line 231
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mIdArr:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 232
    .local v2, selected:I
    if-gez v2, :cond_0

    .line 233
    const/4 p1, -0x1

    .line 234
    const/4 v2, 0x0

    .line 237
    :cond_0
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mNameArr:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 238
    iget-object v4, p0, Lcom/miui/player/ui/EqualizerActivity;->mConfigText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mNameArr:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    :cond_1
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mSaveText:Landroid/widget/TextView;

    if-nez p1, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 242
    if-eqz p3, :cond_3

    .line 243
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v3, 0x5

    if-ge v0, v3, :cond_3

    .line 244
    aget v3, p2, v0

    sget v4, Lcom/miui/player/ui/EqualizerActivity;->BAND_LEVEL_MIN:I

    sub-int v1, v3, v4

    .line 245
    .local v1, progress:I
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mBandSeekBar:[Lcom/miui/player/ui/view/VerticalSeekBar;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Lcom/miui/player/ui/view/VerticalSeekBar;->setProgress(I)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 240
    .end local v0           #i:I
    .end local v1           #progress:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 249
    :cond_3
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mEqualizerSurface:Lcom/miui/player/ui/view/EqualizerView;

    invoke-virtual {v3, p2}, Lcom/miui/player/ui/view/EqualizerView;->setBands([I)V

    .line 250
    return-void
.end method

.method refreshVolume()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 211
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/EqualizerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 212
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 213
    .local v1, maxVolume:I
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 214
    .local v3, volume:I
    mul-int/lit16 v4, v3, 0x3e8

    div-int v2, v4, v1

    .line 215
    .local v2, progress:I
    iget-object v4, p0, Lcom/miui/player/ui/EqualizerActivity;->mVolumeSeekBar:Lcom/miui/player/ui/view/VerticalSeekBar;

    invoke-virtual {v4, v2}, Lcom/miui/player/ui/view/VerticalSeekBar;->setProgress(I)V

    .line 216
    return-void
.end method

.method saveEqualizerConfigId(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 254
    const-string v2, "miui_equalizer"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/miui/player/ui/EqualizerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 255
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 256
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "equalizer_id"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 257
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 258
    return-void
.end method

.method updateIdAndNameArr()V
    .locals 5

    .prologue
    .line 188
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mNameArr:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 189
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mIdArr:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 191
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mNameArr:Ljava/util/List;

    const v4, 0x7f0800d5

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/EqualizerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mIdArr:Ljava/util/List;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-static {p0}, Lcom/miui/player/provider/PlayerProviderUtils;->queryNormalEqualizer(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 195
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 196
    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 197
    .local v1, idIdx:I
    const-string v3, "name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 198
    .local v2, nameIdx:I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mNameArr:Ljava/util/List;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mIdArr:Ljava/util/List;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 205
    .end local v1           #idIdx:I
    .end local v2           #nameIdx:I
    :cond_1
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mNameArr:Ljava/util/List;

    const v4, 0x7f0800d6

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/EqualizerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mIdArr:Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

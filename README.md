# xczimi.com

Personal website for Peter Czimmermann.

## Structure

```
├── public/           # Website content (deployed to S3)
│   ├── index.html    # Main homepage
│   ├── poker/        # Poker tournament timer
│   ├── xpredict/     # Soccer predictions
│   └── ...
├── infrastructure/   # AWS infrastructure (OpenTofu)
└── CLAUDE.md         # Development guidance
```

## Local Development

```bash
python3 -m http.server 8000 -d public
```

## Deployment

```bash
aws s3 sync public/ s3://xczimi.com
```
